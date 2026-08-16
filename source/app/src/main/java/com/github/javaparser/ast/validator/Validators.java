package com.github.javaparser.ast.validator;

import com.github.javaparser.ast.Node;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;

public class Validators implements Validator {
    private final List<Validator> validators;

    public Validators(Validator... validators) {
        ArrayList arrayList = new ArrayList();
        this.validators = arrayList;
        arrayList.addAll(Arrays.asList(validators));
    }

    public Validators add(Validator newValidator) {
        this.validators.add(newValidator);
        return this;
    }

    public List<Validator> getValidators() {
        return this.validators;
    }

    public Validators remove(Validator validator) {
        if (this.validators.remove(validator)) {
            return this;
        }
        throw new AssertionError((Object) "Trying to remove a validator that isn't there.");
    }

    public Validators replace(Validator oldValidator, Validator newValidator) {
        remove(oldValidator);
        add(newValidator);
        return this;
    }

    @Override
    public void accept(final Node node, final ProblemReporter problemReporter) {
        this.validators.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((Validator) obj).accept(Node.this, problemReporter);
            }
        });
    }
}
