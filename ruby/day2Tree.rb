family = {'grandpa' => {'dad' => {'child 1' => {},'child 2' => {}},'uncle' => {'child 3'=> {}, 'child 4'=> {}}}}

class Tree
	attr_accessor :node_name, :children

def initialize(family_tree)
	@node_name = family_tree.keys[0]
	@children = []
	family_tree[node_name].each {|key, value| @children.push(Tree.new({key => value}))}
end

def visit(&block)
	block.call self
end

def visit_all(&block)
	visit &block
	children.each {|child| child.visit_all &block}
end
end

tree = Tree.new(family)
tree.visit {|node| puts node.node_name}
tree.visit_all {|node| puts node.node_name}