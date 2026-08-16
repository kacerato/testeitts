.class public Lh5/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP4/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh5/a;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh5/a;


# direct methods
.method public constructor <init>(Lh5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lh5/a$c;->a:Lh5/a;

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

    iget-object v0, p0, Lh5/a$c;->a:Lh5/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lh5/a;->H(Lh5/a;LQ4/b;)LQ4/b;

    return-void
.end method
