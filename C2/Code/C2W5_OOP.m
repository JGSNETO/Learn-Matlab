% %E.g: struct 
% VeryCoolGuy=struct('name',[])
% VeryCoolGuy.name = 'Jose gomes'

%class definition
%V1
classdef Contact
    properties 
        FirstName
        LastName
        PhoneNumber
    end
end

% To call: person = Contact
% person.FirstName = 'Jose Gomes'

%Create a class with value
classdef Contact
    properties
        FirstName
        LastName
        PhoneNumber
    end
    methods
        function obj=Contact(lname, fname,phone)
            obj.LastName=String(lname)
            obj.FirstName=String(fname)
            obj.PhoneNumber=String(phone)
        end
    end
end 

%v3

classdef Contact
    properties
        FirstName
        LastName
        PhoneNumber
    end
    methods
        function obj=Contact(lname, fname,phone)
            obj.LastName=String(lname)
            obj.FirstName=String(fname)
            obj.PhoneNumber=String(phone)
        end
        function obj=set.LastName(obj,lname)
            obj.LastName = string(lname)
        end
        function lname=get.LastName(obj)
            lname=obj.LastName
    end
end 
%Inheritance
classdef BusinessContact<Contact
    properties
        Company
        Fax
    end
end

%Handle Classes

classdef Akos < handle
    properties 
        card='jack of shades'
    end
end 

classdef TestClass
    properties 
        Value
    end
    methods
        function obj=TestClass(val)
            if nargin == 1
                obj.Value=val;
            elseif nargin == 0
                obj.Value = 0;
            end
        end
        function set_value(obj,val)
            obj.Value=val
        end
    end
end

%Command window
% brandon=TestClass(2)
%brandon=brandon.set_value(3)
%brandon=set_value(brandon,4) : better
