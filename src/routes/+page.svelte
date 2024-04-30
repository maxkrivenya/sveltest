<script>
    let id = "";
    let url = "http://127.0.0.1:8080";
    let address = "";
    let student = "";

    async function send_request(){
        console.log(student);
        address = 
            url + '/api' + '/student/' + id;

        student = await fetch(address).then((response) => response.json());

        return student;
    }

</script>

<svelte:head>
	<title>Home</title>
	<meta name="description" content="Svelte demo app" />
</svelte:head>

<section>
	<h1>
		<span class="welcome">
            lets fucking start this mothertrucker
		</span>
	</h1>

    <input type="text" bind:value = {id}>

    <br>
    <br>

    <button on:click={send_request}>Send GET Request</button> 

	<h2>
         <p><i>hell yeah: {id} : {student} </i></p>
         <br>
         <p>address:{address}</p>
	</h2>
</section>

<style>
	section {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		flex: 0.6;
	}

	h1 {
		width: 100%;
	}

	.welcome {
		display: block;
		position: relative;
		width: 100%;
		height: 0;
		padding: 0 0 calc(100% * 495 / 2048) 0;
	}
</style>
