.class public Ld8/j$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld8/j;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld8/j;


# direct methods
.method public constructor <init>(Ld8/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ld8/j$k;->a:Ld8/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ld8/j;->n0(Landroid/app/Activity;)V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {}, Ld8/j;->t0()V

    return-void
.end method
