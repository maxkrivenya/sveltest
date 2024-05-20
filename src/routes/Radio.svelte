<script>
  export let options      = undefined;
  export let name         = undefined;
  export let userSelected = undefined;
</script>

<div class="radio-inputs">
    {#each options as op}
        <label class="radio">
            <input type="radio" name={name} value={op} bind:group={userSelected}>
            <span class="name">{op}</span>
        </label>
    {/each}
</div>

<style>
</style>
