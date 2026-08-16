.class public final LB0/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LB0/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;LB0/p;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LB0/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB0/B;->a:Ljava/lang/String;

    iput-object p2, p0, LB0/B;->b:LB0/p;

    return-void
.end method

.method public static bridge synthetic a(LB0/B;)LB0/p;
    .locals 0

    iget-object p0, p0, LB0/B;->b:LB0/p;

    return-object p0
.end method

.method public static bridge synthetic b(LB0/B;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LB0/B;->a:Ljava/lang/String;

    return-object p0
.end method
