%Setup qubit input:
q_one      = qubit0(1);
q_two      = qubit0(1);
firstState = kron(q_one,q_two);
Xgate      = [ 0 1; 1 0];
gate1      = kron(hadamard(1),eye(2));
gate2CN    = [ 1 0 0 0;
               0 1 0 0;
               0 0 0 1;
               0 0 1 0;];
finalState = gate2CN*gate1*firstState;