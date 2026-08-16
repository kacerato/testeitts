.class public final LG0/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG0/f$b;


# instance fields
.field public final synthetic c:LD0/k;


# direct methods
.method public constructor <init>(LD0/k;)V
    .locals 0

    iput-object p1, p0, LG0/Z;->c:LD0/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final t(LB0/c;)V
    .locals 1
    .param p1    # LB0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LG0/Z;->c:LD0/k;

    invoke-interface {v0, p1}, LD0/k;->t(LB0/c;)V

    return-void
.end method
