.class public Lj5/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP4/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/a;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj5/a;


# direct methods
.method public constructor <init>(Lj5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lj5/a$c;->a:Lj5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lj5/a$c;->a:Lj5/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj5/a;->H(Lj5/a;LQ4/c;)LQ4/c;

    return-void
.end method
