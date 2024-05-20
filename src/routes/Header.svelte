<script>
	import { page } from '$app/stores';
	import logo from '$lib/images/svelte-logo.svg';
	import github from '$lib/images/github.svg';
    import types from './+page.svelte';
	import './styles.css';

    let classes = ["Students", "Groups", "Professors"];
</script>

<header>
	<div class="corner">
		<a href="https://kit.svelte.dev">
			<img src={logo} alt="SvelteKit" />
		</a>
	</div>



<div class="radio-inputs">
    {#each classes as cl}
        <label class="radio">
            <input type="radio" name="class">
            <span class="name">{cl}</span>
        </label>
    {/each}
</div>


    <div class="corner">
        <a href="https://github.com/maxkrivenya/pnajava">
        <img src={github} alt="GitHub" />
        </a>
    </div>

</header>

<style>
    header {
        display: flex;
        justify-content: space-between;
    }

    .corner {
        width: 3em;
        height: 3em;
    }

    .corner a {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 100%;
        height: 100%;
    }

    .corner img {
        width: 2em;
        height: 2em;
        object-fit: contain;
    }

	a:hover {
		color: var(--color-theme-1);
	}
</style>
