    freq_ratio_12(:,:) = abs(freq_1(:,:)./freq_2(:,:));
    freq_ratio_13(:,:) = abs(freq_1(:,:)./freq_3(:,:));
    freq_ratio_32(:,:) = abs(freq_3(:,:)./freq_2(:,:));
    
    figure
    hold on
    plot(G_3, freq_ratio_12(1,:),'r')
    plot(G_3, freq_ratio_13(1,:),'k')
    plot(G_3, freq_ratio_32(1,:),'b')
    legend('Frequency 1 over 2','Frequency 1 over 3', 'Frequency 3 over 2')
    hold off
    title(['Frequency ratios \itvs \itG_3 \rmwith \itG = \rm',G_Value],'FontSize',12)
    xlabel('\itG_3', 'FontSize',14), ylabel('Frequency ratios', 'FontSize',14)  