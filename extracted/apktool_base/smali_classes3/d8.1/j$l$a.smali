.class public Ld8/j$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld8/j$l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ld8/j$l;


# direct methods
.method public constructor <init>(Ld8/j$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ld8/j$l$a;->b:Ld8/j$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "javaMetaInfo"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    const-string v0, "_PROJECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "javaMetaInfo"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-virtual {p0, p1}, Ld8/j$l$a;->a(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result p1

    return p1
.end method
