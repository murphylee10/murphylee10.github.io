# Makefile

# Variables
HUGO_CMD = hugo server -D
TAILWIND_CMD = npx tailwindcss -i ./themes/simple-dev-portfolio/assets/css/input.css -o ./themes/simple-dev-portfolio/assets/css/output.css --watch

# Default target
all: dev

# Run both Hugo server and Tailwind in parallel
dev:
	@echo "Starting Hugo server and Tailwind CLI..."
	@$(TAILWIND_CMD) & $(HUGO_CMD)

# Optionally, you could have a clean command to remove generated files
clean:
	rm -rf public/

.PHONY: all dev clean
