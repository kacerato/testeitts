.class public Lh1/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/x;->a:Ljava/lang/Class;

    iput-object p2, p0, Lh1/x;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Object;Lh1/y;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lh1/x;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Object;)Lh1/x;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lh1/x;

    invoke-direct {v0, p0, p1}, Lh1/x;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lh1/x;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lh1/x;->b:Ljava/lang/Object;

    return-object v0
.end method
