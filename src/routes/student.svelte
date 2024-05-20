<script>
    export let student = {};
</script>

<header>

<div class = "flex-row" style="justify-content:space-evenly;">
   <ul>
        <li>
            <div class="form-control">
                <input class="input input-alt" placeholder="studentId" required="" type="text" bind:value={student.id}>
                <span class="input-border input-border-alt"></span>
            </div>
        </li>
        <li>
            <div class="form-control">
                <input class="input input-alt" placeholder="Surname" required="" type="text" bind:value={student.surname}>
                <span class="input-border input-border-alt"></span>
            </div>
        </li>
        <li>
            <div class="form-control">
                <input class="input input-alt" placeholder="Name" required="" type="text" bind:value={student.name}>
                <span class="input-border input-border-alt"></span>
            </div>
        </li>
        <li>
            <div class="form-control">
                <input class="input input-alt" placeholder="Patronim" required="" type="text" bind:value={student.patronim}>
                <span class="input-border input-border-alt"></span>
            </div>
        </li>
        <li>
            <div class="form-control">
                <input class="input input-alt" placeholder="GroupId" required="" type="text" bind:value={student.groupId}>
                <span class="input-border input-border-alt"></span>
            </div>
        </li>
   </ul>
            <ul> 
            Marks:
                <li />
                {#each student.marks as mark}
                    <ul class="shadow-div">
                        <li>
                            {mark.date}
                        </li>
                        <li>
                            {mark.value}
                        </li>
                        <li>
                            {mark.subjectName}
                        </li>
                    </ul>
                {/each}
                <li />
            </ul>
            <ul> 
            Skips:
                <li />
                {#each student.skips as skip}
                    <ul class="shadow-div">
                        <li>
                            {skip.date}
                        </li>
                        <li>
                            {skip.value}
                        </li>
                        <li>
                            {skip.subjectName}
                        </li>
                    </ul>
                {/each}
                <li />
            </ul>
   </div>
</header>

<style>
.flex-row{
    justify-content:space-evenly;
}
ul{
    margin-right:10px;
}
</style>
