defmodule MerkleTree do
  def start() do
    {:ok, pid} = Supervisor.start_child(MerkleTree.Supervisor, [])
    pid
  end

  def serialize(pid, path) do
    GenServer.call(pid, {:serialize, path})
  end

  def deserialize(pid, path) do
    GenServer.call(pid, {:deserialize, path})
  end
end
