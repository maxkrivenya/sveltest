<script>
	import './styles.css';
	import logo from '$lib/images/svelte-logo.svg';
	import github from '$lib/images/github.svg';

    import Group from "./group.svelte";
    import Student from "./student.svelte";
    import Professor from './professor.svelte';
    import Radio from './Radio.svelte';
    import StringStudent from './StringStudent.svelte';
    import ListProfessors from './ListProfessors.svelte';
    import ListGroups from './ListGroups.svelte';

    let url     = "https://pnajava.onrender.com/";
    let address = "";
    let student = {
        id: "",
        name:"",
        surname:"",
        patronim:"",
        groupId:"",
        marks:[],
        skips:[]
        };

    let group = {
        id : "",
        degree : "",
        faculty : "",
        semesterNumber: "",
        educationType: ""
    }

    let professor = {
        id : "",
        surname : "",
        name : "",
        patronim : "",
        title : "",
        department : "",
        subjects : []
    }

    const   operations  = ["GET", "POST","PUT","DELETE"];
    const   classes     = ["Student","Group","Professor"];
    let     classRadio  = "Student";
    let     opRadio     = "GET";

    let results = [];
    let pagenum = 0;

    async function send_request(){
        let result = "";
        let id = "";
        let body = "";
        
        const myHeaders = new Headers();
        myHeaders.append("Content-Type","application/json");


        switch(classRadio){
            case classes[0] : {
                id = student.id;
                body = JSON.stringify(student);
                break;
            }
            case classes[1] : {
                id = group.id;
                body = JSON.stringify(group);
                break;
            }
            case classes[2] : {
                id = professor.id;
                body = JSON.stringify(professor);
                break;
            }
            default : {
                id = "Default Id";
                break;
            }
        }


        if(opRadio==="GET"){
            address = url + '/api/' + classRadio.toLowerCase() + '/like/' + pagenum;
            result = await fetch(address, {
                method: "POST",
                body: body,
                headers: myHeaders
            }).then((response) => response.json());
            if(result == null){results = []; return;}
            results = result;
        }
        if(opRadio==="POST"){
            address = url + '/api/' + classRadio.toLowerCase() + '/' + id;
            result = await fetch(address, {
                method: opRadio,
                body: JSON.stringify(student),
                headers: myHeaders
        }).then((response) => response.json());
        }
        if(opRadio==="PUT"){
            address = url + '/api/' + classRadio.toLowerCase() + '/';
            result = await fetch(address, {
                method: opRadio,
                body: JSON.stringify(student),
                headers: myHeaders
        }).then((response) => response.json());
        }

    }

    function clear_student(){
        student = {
            id: "",
            name:"",
            surname:"",
            patronim:"",
            groupId:"",
            marks:[],
            skips:[]
        };
    }

    function clear_professor(){
        professor= {
            id : "",
            surname : "",
            name : "",
            patronim : "",
            title : "",
            department : "",
            subjects : []
        }
    }
    
    function clear_group(){
        group = {
            id : "",
            degree : "",
            faculty : "",
            semesterNumber: "",
            educationType: ""
        }
    }

    function try_decr_page(){
        if(pagenum > 0){
            pagenum = pagenum - 1;
            get_list();
        }
    }
    function incr_page(){
            pagenum = pagenum + 1;
            get_list();
    }

    async function get_list(){
        let result = "";
        let body = "";
        if(classRadio==classes[2]){
            body = JSON.stringify(professor);
        }
        if(classRadio==classes[1]){
            body = JSON.stringify(group);
        }
        if(classRadio==classes[0]){
            body = JSON.stringify(student);
        }
        address = url + '/api/' + classRadio.toLowerCase() + '/like/' + pagenum;
            result = await fetch(address, {
                method: "POST",
                body: body,
                headers: {
                    "Content-Type": "application/json"
                }
            }).then((response) => response.json());
        if(result == null){return;}
        results = result;
    }

</script>

<svelte:head>
	<title>Home</title>
	<meta name="description" content="Svelte demo app" />
</svelte:head>

    <div class = "header">

	    <div class="corner">
		    <a href="https://kit.svelte.dev">
			    <img src={logo} alt="SvelteKit" />
		    </a>
	    </div>

        <Radio options={classes} name="classes" bind:userSelected={classRadio} />

        <div class="corner">
            <a href="https://github.com/maxkrivenya/pnajava">
                <img src={github} alt="GitHub" />
            </a>
        </div>
    </div>

<div class = "flex-row">
    <section>

<br><br><br>
        <Radio options={operations} name="operations" bind:userSelected={opRadio} />
<br><br><br>
        <button class="coolButton" on:click={send_request}>Send a {opRadio} request!</button> 
<br><br><br>

        {#if        classRadio === classes[2]}
            <Professor  {professor} />
            <button on:click={clear_professor}>Clear</button>
        {:else if   classRadio === classes[1]}
            <Group      {group} />
            <button on:click={clear_group}>Clear</button>
        {:else}
            <Student    {student} />
            <button on:click={clear_student}>Clear</button>
        {/if}

<br><br>

    </section>

    <section>
    <h2>address={address}</h2>
    
        {#if        classRadio === classes[2]}
            <ListProfessors 
                options={results} 
                name={classRadio} 
                incr_page={incr_page} 
                decr_page={try_decr_page} 
                bind:userSelected={professor}
            />
        {:else if   classRadio === classes[1]}
            <ListGroups 
                options={results} 
                name={classRadio} 
                incr_page={incr_page} 
                decr_page={try_decr_page} 
                bind:userSelected={group}
            />
        {:else}
            <StringStudent 
                options={results} 
                name={classRadio} 
                incr_page={incr_page} 
                decr_page={try_decr_page} 
                bind:userSelected={student}
            />
        {/if}

    </section>

</div>





<style>

    .header{
        width: 100%; 
        display: flex; 
        flex-direction:row; 
        justify-content : space-between;
    }

	section {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		flex: 0.6;
        padding-top: 0;
	}

</style>
