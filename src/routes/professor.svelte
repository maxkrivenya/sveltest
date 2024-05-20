<script>
    export let professor = {};
</script>

<header>

<div class = "flex-row">
   <ul>
        <li>
            <div class="form-control">
                <input class="input input-alt" placeholder="ID" required="" type="text" bind:value={professor.id}>
                <span class="input-border input-border-alt"></span>
            </div>
        </li>
        <li>
            <div class="form-control">
                <input class="input input-alt" placeholder="Surname" required="" type="text" bind:value={professor.surname}>
                <span class="input-border input-border-alt"></span>
            </div>
        </li>
        <li>
            <div class="form-control">
                <input class="input input-alt" placeholder="Name" required="" type="text" bind:value={professor.name}>
                <span class="input-border input-border-alt"></span>
            </div>
        </li>
        <li>
            <div class="form-control">
                <input class="input input-alt" placeholder="Patronim" required="" type="text" bind:value={professor.patronim}>
                <span class="input-border input-border-alt"></span>
            </div>
        </li>
        <li>
            <div class="form-control">
                <input class="input input-alt" placeholder="Title" required="" type="text" bind:value={professor.title}>
                <span class="input-border input-border-alt"></span>
            </div>
        </li>
        <li>
            <div class="form-control">
                <input class="input input-alt" placeholder="Department" required="" type="text" bind:value={professor.department}>
                <span class="input-border input-border-alt"></span>
            </div>
        </li>
   </ul>
            <ul> 
            Subjects:
                <li />
                {#each professor.subjects as subj}
                    <ul class="shadow-div">
                        <li>
                            {subj.name}
                        </li>
                        <li>
                            {subj.fullName}
                        </li>
                        <li>
                            {subj.semesterId}
                        </li>
                    </ul>
                {/each}
                <li />
            </ul>
   </div>
</header>

<style>
</style>
