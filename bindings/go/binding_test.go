package tree_sitter_gomod_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_gomod "github.com/tree-sitter/tree-sitter-gomod/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_gomod.Language())
	if language == nil {
		t.Errorf("Error loading Gomod grammar")
	}
}
