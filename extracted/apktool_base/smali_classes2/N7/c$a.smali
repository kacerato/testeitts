.class public LN7/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN7/c;->l(FLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$runnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LN7/c$a;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 1

    iget-object v0, p0, LN7/c$a;->a:Ljava/lang/Runnable;

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method
