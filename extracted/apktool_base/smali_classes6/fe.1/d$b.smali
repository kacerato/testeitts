.class public Lfe/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfe/d;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe/g0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Ljava/lang/StringBuilder;

.field public final synthetic c:Lfe/d;


# direct methods
.method public constructor <init>(Lfe/d;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lfe/d$b;->c:Lfe/d;

    iput-object p2, p0, Lfe/d$b;->b:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lfe/d$b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;F)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lfe/d$b;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfe/d$b;->a:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfe/d$b;->b:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lfe/d$b;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method
