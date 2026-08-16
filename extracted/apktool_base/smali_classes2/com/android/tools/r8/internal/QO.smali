.class public final Lcom/android/tools/r8/internal/QO;
.super Lcom/android/tools/r8/internal/IO;
.source "SourceFile"


# static fields
.field public static final k:Lcom/android/tools/r8/internal/QO;


# instance fields
.field public final f:Lcom/android/tools/r8/internal/LX;

.field public final g:Lcom/android/tools/r8/internal/LX;

.field public final h:Lcom/android/tools/r8/internal/LX;

.field public final i:Lcom/android/tools/r8/internal/LX;

.field public final j:Lcom/android/tools/r8/internal/LX;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v10, Lcom/android/tools/r8/internal/QO;

    sget-object v1, Lcom/android/tools/r8/internal/a2;->f:Lcom/android/tools/r8/internal/ff0;

    sget-object v9, Lcom/android/tools/r8/internal/LX;->a:Lcom/android/tools/r8/internal/IX;

    move-object v0, v10

    move-object v2, v9

    move-object v3, v9

    move-object v4, v9

    move-object v5, v9

    move-object v6, v9

    move-object v7, v9

    move-object v8, v9

    invoke-direct/range {v0 .. v9}, Lcom/android/tools/r8/internal/QO;-><init>(Ljava/util/Set;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;)V

    sput-object v10, Lcom/android/tools/r8/internal/QO;->k:Lcom/android/tools/r8/internal/QO;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p8}, Lcom/android/tools/r8/internal/IO;-><init>(Ljava/util/Set;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;)V

    iput-object p4, p0, Lcom/android/tools/r8/internal/QO;->f:Lcom/android/tools/r8/internal/LX;

    iput-object p5, p0, Lcom/android/tools/r8/internal/QO;->g:Lcom/android/tools/r8/internal/LX;

    iput-object p6, p0, Lcom/android/tools/r8/internal/QO;->h:Lcom/android/tools/r8/internal/LX;

    iput-object p7, p0, Lcom/android/tools/r8/internal/QO;->i:Lcom/android/tools/r8/internal/LX;

    iput-object p9, p0, Lcom/android/tools/r8/internal/QO;->j:Lcom/android/tools/r8/internal/LX;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    invoke-super {p0}, Lcom/android/tools/r8/internal/IO;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/QO;->f:Lcom/android/tools/r8/internal/LX;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/IX;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/QO;->g:Lcom/android/tools/r8/internal/LX;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/IX;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/QO;->h:Lcom/android/tools/r8/internal/LX;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/IX;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/QO;->i:Lcom/android/tools/r8/internal/LX;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/IX;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/QO;->j:Lcom/android/tools/r8/internal/LX;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/IX;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/util/function/Consumer;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/QO;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod$Builder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/KS0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/KS0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod$Builder;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/IO;->a(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/QO;->f:Lcom/android/tools/r8/internal/LX;

    new-instance v2, Lcom/android/tools/r8/internal/LS0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/LS0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod$Builder;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/LX;->a(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/QO;->g:Lcom/android/tools/r8/internal/LX;

    new-instance v2, Lcom/android/tools/r8/internal/MS0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/MS0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod$Builder;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/LX;->a(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/QO;->h:Lcom/android/tools/r8/internal/LX;

    new-instance v2, Lcom/android/tools/r8/internal/NS0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/NS0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod$Builder;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/LX;->a(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/QO;->i:Lcom/android/tools/r8/internal/LX;

    new-instance v2, Lcom/android/tools/r8/internal/OS0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/OS0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod$Builder;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/LX;->a(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/QO;->j:Lcom/android/tools/r8/internal/LX;

    new-instance v2, Lcom/android/tools/r8/internal/PS0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/PS0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod$Builder;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/LX;->a(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/QO;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "*"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Mk0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Mk0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {v1, p0}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/IO;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/QO;->f:Lcom/android/tools/r8/internal/LX;

    const-string v3, "synchronized"

    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/LX;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/QO;->g:Lcom/android/tools/r8/internal/LX;

    const-string v3, "bridge"

    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/LX;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/QO;->h:Lcom/android/tools/r8/internal/LX;

    const-string v3, "native"

    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/LX;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/QO;->i:Lcom/android/tools/r8/internal/LX;

    const-string v3, "abstract"

    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/LX;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/QO;->j:Lcom/android/tools/r8/internal/LX;

    const-string v3, "strictfp"

    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/LX;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
