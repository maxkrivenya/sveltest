<script>
  export let options      = undefined;
  export let name         = undefined;
  export let userSelected = undefined;

  export let incr_page = {};
  export let decr_page = {};
</script>


<div class="radio-inputs" style="flex-direction:column; justify-content: center; width:100%; height:100%; box-shadow:none; min-height: 40%; margin-top:100px;">
        <table style="justify-content:center align-items:center">
        <caption><h2><b>{name}s matching your request<b></h2></caption>
            {#each options as op}
                <br>
                <tr>
                    <label class="radio">
                    <input type="radio" name={name} value={op} bind:group={userSelected}>
                    <td style="width:300px">{op.id}</td>
                    <td>{op.degree}</td>
                    <td>{op.faculty}</td>
                    <td>{op.semesterNumber}</td>
                    <td>{op.educationType}</td>
                    </label>
                </tr>
            {/each}
            <br>
    <div class="flex-row" style="width:100%; justify-content:space-evenly;">
        <button class="left_and_right" on:click={decr_page}>-</button>
        <button class="left_and_right" on:click={incr_page}>+</button>
    </div>
        </table>
        <br>
        <br>

</div>
<br>

<style>

/**{border:1px solid red;}*/

label{
    display:flex;
    justify-content:space-evenly;
    height:100%;
}
tr{
    width:100%;
    height:15%;
    display:flex;
	box-shadow: 2px 2px 6px #D30C7B;
}
td{
    display:flex;
    height:90%;
    align-items:center;
}

table{
    display:flex;
    flex-direction: column;
    height:100%;
    min-height:90%;
    min-width: 90%;
}

.left_and_right{
    width: 30%;
    height:20px;
}
</style>
