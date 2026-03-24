return {
	--"eandrju/cellular-automaton.nvim",
	--opt = {
	--	vim.api.nvim_create_autocmd("bufread", {
	--		pattern = { ".*rc" },
	--		callback = function()
	--			vim.bo.filetype = "sh"
	--		end,
	--	}),
	--},

	--{
	--	"neovide/neovide",
	--	opt = {},
	--},

	{
		"sphamba/smear-cursor.nvim",
		opts = {

			-- visual

			stiffness = 1,
			trailing_stiffness = 0.25,
			damping = 0.5,
			trailing_exponent = 16,
			transparent_bg_fallback_color = "#ffffff",

			-- particles: flame

			--particles_enabled = true,
			--particle_max_num = 128,
			--particle_spread = 1,
			--particles_per_second = 128,
			--particles_per_length = 16,
			--particle_max_lifetime = 1000,
			--particle_lifetime_distribution_exponent = 10,
			--particle_max_initial_velocity = 10,
			--particle_velocity_from_cursor = 1,
			--particle_random_velocity = 10,
			--particle_damping = 0.1,
			--particle_gravity = -100,
			--min_distance_emit_particles = -1,

			-- particles: radiation
            
			--particles_enabled = true,
			--particle_max_num = 128,
			--particle_spread = 1,
			--particles_per_second = 100,
			--particles_per_length = 100,
			--particle_max_lifetime = 1000,
			--particle_lifetime_distribution_exponent = 10,
			--particle_max_initial_velocity = 128,
			--particle_velocity_from_cursor = 4,
			--particle_random_velocity = 64,
			--particle_damping = 0.1,
			--particle_gravity = 0,
			--min_distance_emit_particles = -1,
		},
	},
}
