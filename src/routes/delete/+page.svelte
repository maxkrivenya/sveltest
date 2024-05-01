<script>
    import Student from "./../student.svelte";

    let id = "";
    let url = "http://127.0.0.1:8080";
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

    async function send_request(){
        console.log(student);
        address = 
            url + '/api' + '/student/' + 'delete/' + id;
 
        student = await fetch(address).then((response) => response.json());

        return student;
    }

</script>

<header>
	<h1>
		<span class="welcome">
            lets delete some mfs
		</span>
	</h1>

    <input type="text" bind:value = {id}>

    <br>
    <br>

    <button on:click={send_request}>Send KILL Request</button> 

	<h2>
         <p><i>hell yeah: {id} </i></p>
         <br>
         <p>address:{address}</p>
         <br>
	</h2>

        <Student {student} />
</header>

<style>

	h1 {
		width: 100%;
	}

	.welcome {
		display: block;
		position: relative;
		width: 100%;
		height: 0;
        padding:50px;
	}
</style>
