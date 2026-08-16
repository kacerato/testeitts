.class public LN6/p$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN9/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN6/p;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LN6/p;


# direct methods
.method public constructor <init>(LN6/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LN6/p$g;->a:LN6/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LN6/p$g;->a:LN6/p;

    invoke-static {v0}, LN6/p;->m(LN6/p;)LN6/H;

    move-result-object v0

    invoke-virtual {v0}, LN6/H;->b0()V

    return-void
.end method
