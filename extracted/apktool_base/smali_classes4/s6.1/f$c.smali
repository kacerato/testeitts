.class public Ls6/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls6/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/String;",
        "Ls6/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls6/f;


# direct methods
.method public constructor <init>(Ls6/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ls6/f$c;->a:Ls6/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls6/f;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "String",
            "stack"
        }
    .end annotation

    iget-object p1, p0, Ls6/f$c;->a:Ls6/f;

    iget-object p1, p1, Ls6/f;->i:[J

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-virtual {p2}, Ls6/f;->a()J

    move-result-wide v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "String",
            "stack"
        }
    .end annotation

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ls6/f;

    invoke-virtual {p0, p1, p2}, Ls6/f$c;->a(Ljava/lang/String;Ls6/f;)V

    return-void
.end method
