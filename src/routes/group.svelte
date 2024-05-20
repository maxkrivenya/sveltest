<script>
    export let group = {};
</script>

<header>

   <ul>
        <li>
            <div class="form-control">
                <input class="input input-alt" placeholder="groupId" required="" type="text" bind:value={group.id}>
                <span class="input-border input-border-alt"></span>
            </div>
        </li>
        <li>
            <div class="form-control">
                <input class="input input-alt" placeholder="degree" required="" type="text" bind:value={group.degree}>
                <span class="input-border input-border-alt"></span>
            </div>
        </li>
        <li>
            <div class="form-control">
                <input class="input input-alt" placeholder="faculty" required="" type="text" bind:value={group.faculty}>
                <span class="input-border input-border-alt"></span>
            </div>
        </li>
        <li>
            <div class="form-control">
                <input class="input input-alt" placeholder="semesterNumber" required="" type="text" bind:value={group.semesterNumber}>
                <span class="input-border input-border-alt"></span>
            </div>
        </li>
        <li>
            <div class="form-control">
                <input class="input input-alt" placeholder="educationType" required="" type="text" bind:value={group.educationType}>
                <span class="input-border input-border-alt"></span>
            </div>
        </li>
   </ul>

</header>

<style>
</style>
