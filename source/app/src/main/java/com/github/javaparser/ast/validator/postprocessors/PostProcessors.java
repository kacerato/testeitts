package com.github.javaparser.ast.validator.postprocessors;

import com.github.javaparser.ParseResult;
import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.Processor;
import com.github.javaparser.ast.Node;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;

public class PostProcessors {
    private final List<Processor> postProcessors;

    public PostProcessors(Processor... postProcessors) {
        ArrayList arrayList = new ArrayList();
        this.postProcessors = arrayList;
        arrayList.addAll(Arrays.asList(postProcessors));
    }

    public PostProcessors add(Processor newProcessor) {
        this.postProcessors.add(newProcessor);
        return this;
    }

    public List<Processor> getPostProcessors() {
        return this.postProcessors;
    }

    public void postProcess(final ParseResult<? extends Node> result, final ParserConfiguration configuration) {
        this.postProcessors.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((Processor) obj).postProcess(ParseResult.this, configuration);
            }
        });
    }

    public PostProcessors remove(Processor postProcessor) {
        if (this.postProcessors.remove(postProcessor)) {
            return this;
        }
        throw new AssertionError((Object) "Trying to remove a post processor that isn't there.");
    }

    public PostProcessors replace(Processor oldProcessor, Processor newProcessor) {
        remove(oldProcessor);
        add(newProcessor);
        return this;
    }
}
