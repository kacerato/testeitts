.class public Lw5/j$U$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$U$a;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lw5/j$U$a;


# direct methods
.method public constructor <init>(Lw5/j$U$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$U$a$a;->b:Lw5/j$U$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lw5/j$U$a$a;->b:Lw5/j$U$a;

    iget-object v0, v0, Lw5/j$U$a;->c:Lw5/j$U;

    iget-object v0, v0, Lw5/j$U;->c:Lw5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lw5/b;->a()V

    :cond_0
    return-void
.end method
