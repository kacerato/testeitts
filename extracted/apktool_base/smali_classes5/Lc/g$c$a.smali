.class public LLc/g$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/k0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLc/g$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe/k0<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:LLc/g$c;


# direct methods
.method public constructor <init>(LLc/g$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LLc/g$c$a;->a:LLc/g$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    iget-object v0, p0, LLc/g$c$a;->a:LLc/g$c;

    iget-object v1, v0, LLc/g$c;->c:LLc/d;

    iget-object v0, v0, LLc/g$c;->b:Ljava/lang/Object;

    invoke-interface {v1, v0, p1}, LLc/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, LLc/g$c$a;->a:LLc/g$c;

    iget-object v0, v0, LLc/g$c;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
