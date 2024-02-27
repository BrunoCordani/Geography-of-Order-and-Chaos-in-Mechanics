%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S_vec_o(1) = str2num(get(app.edit_S01,'Value'));
S_vec_o(2) = str2num(get(app.edit_S02,'Value'));
S_vec_o(3) = str2num(get(app.edit_S03,'Value'));
D_vec_o(1) = str2num(get(app.edit_D01,'Value'));
D_vec_o(2) = str2num(get(app.edit_D02,'Value'));
D_vec_o(3) = str2num(get(app.edit_D03,'Value'));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
qp2uv
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
SoDo2uRvR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
L = sqrt(sm_ax);       
cos_l_Pauli = (vR(:,3).^2+vR(:,4).^2-uR(:,3).^2-uR(:,4).^2)...    
    ./sqrt((2*uR(:,3).*vR(:,3)+2*uR(:,4).*vR(:,4)).^2+(vR(:,3).^2+vR(:,4).^2-uR(:,3).^2-uR(:,4).^2).^2);   
sin_l_Pauli = (2*uR(:,3).*vR(:,3)+2*uR(:,4).*vR(:,4))...    
    ./sqrt((2*uR(:,3).*vR(:,3)+2*uR(:,4).*vR(:,4)).^2+(vR(:,3).^2+vR(:,4).^2-uR(:,3).^2-uR(:,4).^2).^2);
Lx = L.*cos_l_Pauli;
Ly = L.*sin_l_Pauli;
signal = Lx + i*Ly;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%