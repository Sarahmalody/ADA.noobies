with Ada.Text_IO; use Ada.Text_IO;

procedure Simple_Calculator is
   A, B : Integer;
   Operation : Character;
   Result : Float;
begin
   Put_Line("Enter the first number: ");
   A := Integer'Value(Get_Line);
   
   Put_Line("Enter the operation (+, -, *, /): ");
   Operation := Character'Value(Get_Line);
   
   Put_Line("Enter the second number: ");
   B := Integer'Value(Get_Line);

   case Operation is
      when '+' => Result := Float(A + B);
      when '-' => Result := Float(A - B);
      when '*' => Result := Float(A * B);
      when '/' => Result := Float(A) / Float(B);
      when others => Put_Line("Invalid operation");
   end case;

   Put_Line("Result: " & Float'Image(Result));
end Simple_Calculator;