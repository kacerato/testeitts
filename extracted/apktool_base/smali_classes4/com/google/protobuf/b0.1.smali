.class public Lcom/google/protobuf/b0;
.super Lcom/google/protobuf/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/b0$b;,
        Lcom/google/protobuf/b0$c;
    }
.end annotation


# static fields
.field public static final k:Lcom/google/protobuf/b0;


# instance fields
.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/b0$c;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/b0$c;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/protobuf/b0$b;",
            "Lcom/google/protobuf/b0$c;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/protobuf/b0$b;",
            "Lcom/google/protobuf/b0$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/b0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/b0;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/b0;->k:Lcom/google/protobuf/b0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/d0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/b0;->g:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/b0;->h:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/b0;->i:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/b0;->j:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/b0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/d0;-><init>(Lcom/google/protobuf/d0;)V

    .line 7
    iget-object v0, p1, Lcom/google/protobuf/b0;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/b0;->g:Ljava/util/Map;

    .line 8
    iget-object v0, p1, Lcom/google/protobuf/b0;->h:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/b0;->h:Ljava/util/Map;

    .line 9
    iget-object v0, p1, Lcom/google/protobuf/b0;->i:Ljava/util/Map;

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/b0;->i:Ljava/util/Map;

    .line 11
    iget-object p1, p1, Lcom/google/protobuf/b0;->j:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/b0;->j:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "empty"
        }
    .end annotation

    .line 12
    sget-object p1, Lcom/google/protobuf/d0;->f:Lcom/google/protobuf/d0;

    invoke-direct {p0, p1}, Lcom/google/protobuf/d0;-><init>(Lcom/google/protobuf/d0;)V

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/b0;->g:Ljava/util/Map;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/b0;->h:Ljava/util/Map;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/b0;->i:Ljava/util/Map;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/b0;->j:Ljava/util/Map;

    return-void
.end method

.method public static v()Lcom/google/protobuf/b0;
    .locals 1

    sget-object v0, Lcom/google/protobuf/b0;->k:Lcom/google/protobuf/b0;

    return-object v0
.end method

.method public static x(Lcom/google/protobuf/Z;)Lcom/google/protobuf/b0$c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Z<",
            "**>;)",
            "Lcom/google/protobuf/b0$c;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/Z;->j()Lcom/google/protobuf/Y0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/protobuf/b0$c;

    invoke-virtual {p0}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/Z;->j()Lcom/google/protobuf/Y0;

    move-result-object p0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/protobuf/b0$c;-><init>(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;Lcom/google/protobuf/b0$a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered message-type extension had null default instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/protobuf/b0$c;

    invoke-virtual {p0}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object p0

    invoke-direct {v0, p0, v2, v2}, Lcom/google/protobuf/b0$c;-><init>(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;Lcom/google/protobuf/b0$a;)V

    return-object v0
.end method

.method public static y()Lcom/google/protobuf/b0;
    .locals 1

    new-instance v0, Lcom/google/protobuf/b0;

    invoke-direct {v0}, Lcom/google/protobuf/b0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic e()Lcom/google/protobuf/d0;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/b0;->w()Lcom/google/protobuf/b0;

    move-result-object v0

    return-object v0
.end method

.method public i(Lcom/google/protobuf/Descriptors$f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/protobuf/b0$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/google/protobuf/b0$c;-><init>(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;Lcom/google/protobuf/b0$a;)V

    sget-object p1, Lcom/google/protobuf/Z$a;->IMMUTABLE:Lcom/google/protobuf/Z$a;

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/b0;->l(Lcom/google/protobuf/b0$c;Lcom/google/protobuf/Z$a;)V

    sget-object p1, Lcom/google/protobuf/Z$a;->MUTABLE:Lcom/google/protobuf/Z$a;

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/b0;->l(Lcom/google/protobuf/b0$c;Lcom/google/protobuf/Z$a;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ExtensionRegistry.add() must be provided a default instance when adding an embedded message extension."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "type",
            "defaultInstance"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/protobuf/b0$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/protobuf/b0$c;-><init>(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;Lcom/google/protobuf/b0$a;)V

    sget-object p1, Lcom/google/protobuf/Z$a;->IMMUTABLE:Lcom/google/protobuf/Z$a;

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/b0;->l(Lcom/google/protobuf/b0$c;Lcom/google/protobuf/Z$a;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ExtensionRegistry.add() provided a default instance for a non-message extension."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Lcom/google/protobuf/Z;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Z<",
            "**>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->i()Lcom/google/protobuf/Z$a;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Z$a;->IMMUTABLE:Lcom/google/protobuf/Z$a;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->i()Lcom/google/protobuf/Z$a;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Z$a;->MUTABLE:Lcom/google/protobuf/Z$a;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/b0;->x(Lcom/google/protobuf/Z;)Lcom/google/protobuf/b0$c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->i()Lcom/google/protobuf/Z$a;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/b0;->l(Lcom/google/protobuf/b0$c;Lcom/google/protobuf/Z$a;)V

    return-void
.end method

.method public final l(Lcom/google/protobuf/b0$c;Lcom/google/protobuf/Z$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "extension",
            "extensionType"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/protobuf/b0$c;->a:Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/protobuf/b0$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/protobuf/b0;->h:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/protobuf/b0;->j:Ljava/util/Map;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/protobuf/b0;->g:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/protobuf/b0;->i:Ljava/util/Map;

    :goto_0
    iget-object v1, p1, Lcom/google/protobuf/b0$c;->a:Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/protobuf/b0$b;

    iget-object v2, p1, Lcom/google/protobuf/b0$c;->a:Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$f;->q()Lcom/google/protobuf/Descriptors$b;

    move-result-object v2

    iget-object v3, p1, Lcom/google/protobuf/b0$c;->a:Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/b0$b;-><init>(Lcom/google/protobuf/Descriptors$b;I)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/protobuf/b0$c;->a:Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->q()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->w()Lcom/google/protobuf/H$z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/H$z;->X2()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$f$c;->MESSAGE:Lcom/google/protobuf/Descriptors$f$c;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->H()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->t()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object v2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ExtensionRegistry.add() was given a FieldDescriptor for a regular (non-extension) field."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Lcom/google/protobuf/t0$n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t0$n<",
            "**>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b0;->k(Lcom/google/protobuf/Z;)V

    return-void
.end method

.method public n(Ljava/lang/String;)Lcom/google/protobuf/b0$c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fullName"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b0;->p(Ljava/lang/String;)Lcom/google/protobuf/b0$c;

    move-result-object p1

    return-object p1
.end method

.method public o(Lcom/google/protobuf/Descriptors$b;I)Lcom/google/protobuf/b0$c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "containingType",
            "fieldNumber"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b0;->q(Lcom/google/protobuf/Descriptors$b;I)Lcom/google/protobuf/b0$c;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/String;)Lcom/google/protobuf/b0$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fullName"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/b0;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b0$c;

    return-object p1
.end method

.method public q(Lcom/google/protobuf/Descriptors$b;I)Lcom/google/protobuf/b0$c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "containingType",
            "fieldNumber"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/b0;->i:Ljava/util/Map;

    new-instance v1, Lcom/google/protobuf/b0$b;

    invoke-direct {v1, p1, p2}, Lcom/google/protobuf/b0$b;-><init>(Lcom/google/protobuf/Descriptors$b;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b0$c;

    return-object p1
.end method

.method public r(Ljava/lang/String;)Lcom/google/protobuf/b0$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fullName"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/b0;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b0$c;

    return-object p1
.end method

.method public s(Lcom/google/protobuf/Descriptors$b;I)Lcom/google/protobuf/b0$c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "containingType",
            "fieldNumber"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/b0;->j:Ljava/util/Map;

    new-instance v1, Lcom/google/protobuf/b0$b;

    invoke-direct {v1, p1, p2}, Lcom/google/protobuf/b0$b;-><init>(Lcom/google/protobuf/Descriptors$b;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b0$c;

    return-object p1
.end method

.method public t(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fullName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/protobuf/b0$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/google/protobuf/b0;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b0$b;

    invoke-static {v2}, Lcom/google/protobuf/b0$b;->a(Lcom/google/protobuf/b0$b;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/protobuf/b0;->i:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b0$c;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public u(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fullName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/protobuf/b0$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/google/protobuf/b0;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b0$b;

    invoke-static {v2}, Lcom/google/protobuf/b0$b;->a(Lcom/google/protobuf/b0$b;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/protobuf/b0;->j:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b0$c;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public w()Lcom/google/protobuf/b0;
    .locals 1

    new-instance v0, Lcom/google/protobuf/b0;

    invoke-direct {v0, p0}, Lcom/google/protobuf/b0;-><init>(Lcom/google/protobuf/b0;)V

    return-object v0
.end method
