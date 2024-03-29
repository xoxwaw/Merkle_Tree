defmodule MerkleTree.Application do
  use Application

  def start(_type, _args) do

    import Supervisor.Spec

    children = [
      worker(MerkleTree.Server, [])
    ]

    options = [
      name: MerkleTree.Supervisor,
      strategy: :simple_one_for_one,
    ]

    Supervisor.start_link(children, options)
  end
end
