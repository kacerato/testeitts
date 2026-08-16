package java.lang.module;

public class InvalidModuleDescriptorException extends RuntimeException {
    private static final long serialVersionUID = 4863390386809347380L;

    public InvalidModuleDescriptorException() {
    }

    public InvalidModuleDescriptorException(String msg) {
        super(msg);
    }
}
