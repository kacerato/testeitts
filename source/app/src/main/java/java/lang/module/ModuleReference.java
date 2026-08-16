package java.lang.module;

import java.io.IOException;
import java.net.URI;
import java.util.Objects;
import java.util.Optional;

public abstract class ModuleReference {
    private final ModuleDescriptor descriptor;
    private final URI location;

    public abstract ModuleReader open() throws IOException;

    protected ModuleReference(ModuleDescriptor descriptor, URI location) {
        this.descriptor = (ModuleDescriptor) Objects.requireNonNull(descriptor);
        this.location = location;
    }

    public final ModuleDescriptor descriptor() {
        return this.descriptor;
    }

    public final Optional<URI> location() {
        return Optional.ofNullable(this.location);
    }
}
