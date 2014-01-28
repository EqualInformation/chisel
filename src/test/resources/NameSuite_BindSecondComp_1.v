module NameSuite_Block_1(
    input  io_irq,
    output[4:0] io_irq_cause
);

  wire[4:0] T0;

  assign io_irq_cause = T0;
  assign T0 = {3'h0/* 0*/, 2'h2/* 2*/};
endmodule

module NameSuite_BindSecondComp_1(
    input  io_irq,
    output[5:0] io_irq_cause
);

  wire[5:0] T0;
  wire[4:0] NameSuite_Block_1_io_irq_cause;

  assign io_irq_cause = T0;
  assign T0 = {1'h1/* 1*/, NameSuite_Block_1_io_irq_cause};
  NameSuite_Block_1 NameSuite_Block_1(
       .io_irq( io_irq ),
       .io_irq_cause( NameSuite_Block_1_io_irq_cause )
  );
endmodule

