<script>
    export let student = {};
</script>

<header>
   <ul>
        <li>
            {student.id}
        </li>
        <li>
            {student.surname}
        </li>
        <li>
            {student.name}
        </li>
        <li>
            {student.patronim}
        </li>
        <li>
            {student.groupId}
        </li>
        <li>
            <ul> 
                <li />
                {#each student.marks as mark}
                    <ul>
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
        </li>
        <li>
            <ul> 
                <li />
                {#each student.skips as skip}
                    <ul>
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
        </li>
   </ul>
</header>

<style>
</style>
