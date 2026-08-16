.class public Lue/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lue/e;->i(IILue/e$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lue/e$e;

.field public final synthetic e:Lue/e;


# direct methods
.method public constructor <init>(Lue/e;IILue/e$e;)V
    .locals 0

    iput-object p1, p0, Lue/e$a;->e:Lue/e;

    iput p2, p0, Lue/e$a;->b:I

    iput p3, p0, Lue/e$a;->c:I

    iput-object p4, p0, Lue/e$a;->d:Lue/e$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lue/e$a;->e:Lue/e;

    invoke-static {v0}, Lue/e;->a(Lue/e;)Lue/e$f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lue/e$a;->e:Lue/e;

    invoke-static {v1}, Lue/e;->b(Lue/e;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lue/e$a;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lue/e$a;->e:Lue/e;

    iget v2, p0, Lue/e$a;->b:I

    iget v3, p0, Lue/e$a;->c:I

    iget-object v4, p0, Lue/e$a;->d:Lue/e$e;

    invoke-static {v1, v2, v3, v4}, Lue/e;->c(Lue/e;IILue/e$e;)V

    invoke-interface {v0}, Lue/e$f;->a()V

    :cond_0
    return-void
.end method
