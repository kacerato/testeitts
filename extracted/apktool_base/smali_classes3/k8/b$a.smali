.class public Lk8/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk8/b;->c(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/lang/String;Ljava/lang/String;ILjava/io/File;Lk8/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$javaMetaInfo",
            "val$file",
            "val$RUNTIME_FOLDER",
            "val$javaFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lk8/b$a;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iput-object p2, p0, Lk8/b$a;->b:Ljava/io/File;

    iput-object p3, p0, Lk8/b$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lk8/b$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ld8/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk8/b$a;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    return-object p1

    :cond_0
    iget-object v0, p0, Lk8/b$a;->b:Ljava/io/File;

    iget-object v1, p0, Lk8/b$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lk8/b$a;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lk8/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
