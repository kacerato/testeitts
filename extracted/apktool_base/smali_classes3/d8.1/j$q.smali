.class public Ld8/j$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld8/j;->r0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$projectName",
            "val$javaMetaInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld8/j$q;->a:Ljava/lang/String;

    iput-object p2, p0, Ld8/j$q;->b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 2

    iget-object v0, p0, Ld8/j$q;->a:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ld8/j;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ld8/j$q;->b:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-static {v0}, Ld8/j;->r0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
