classdef LinkedNode <handle
    properties
        Prev
        Next
        Owner
    end
    methods
        function node=LinkedNode()
            node.Prev=[];
            node.next=[];
            node.Owner=[];
        end
    end
end

%Classdef Dlist: Double linked list

classdef Dlist < handle
    properties
        Head 
        Tail
        Length
    end
    methods
        function list = Dlist()
            list.Head=[];
            list.Tails=[]
            list.length=0;
        end
        function insert(list, node)
            if ~isempty(node.Owner)
                if node.Owner ~= list 
                    node.Owner.remove(node);
                else
                    return;
                end
            end
            if list.length == 0
                list.Head=node;
            else
                list.Tail.Next=node;
            end
            node.Next=[];
            node.Prev=list.Tail;
            list.Tail=node;
            list.length=list.length+1;
            node.Owner=list;
        end


             
                     
               