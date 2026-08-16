package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

public interface g {
    C b(ShaderGraphNode node, int inputIndex);

    String c(ShaderGraphNode node, int outputIndex, w stage, C type);

    void d(ShaderGraphNode node, int outputIndex, w stage, String expression, C type);

    void e(ec.g sampler);

    void f(w stage, String functionCode);

    String g(ShaderGraphNode node, int inputIndex, w stage, C desiredType);

    void h(w stage, String codeLine);

    void i(ec.f param);

    ShaderGraphData j();

    boolean k(ShaderGraphNode node, int inputIndex);
}
