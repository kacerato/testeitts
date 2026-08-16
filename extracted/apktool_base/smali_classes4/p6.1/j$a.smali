.class public Lp6/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp6/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp6/j;->g(Ljava/lang/String;)Lp6/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp6/j;


# direct methods
.method public constructor <init>(Lp6/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lp6/j$a;->a:Lp6/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Lp6/j$a;->a:Lp6/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lp6/j;->a(Lp6/j;Lp6/g;)Lp6/g;

    return-void
.end method
