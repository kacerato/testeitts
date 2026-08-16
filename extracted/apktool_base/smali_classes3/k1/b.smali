.class public final Lk1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final b:Lk1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lk1/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk1/b;-><init>(ZLk1/d;)V

    sput-object v0, Lk1/b;->b:Lk1/b;

    return-void
.end method

.method public constructor <init>(ZLk1/d;)V
    .locals 0
    .param p2    # Lk1/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ZLk1/c;)Lk1/b;
    .locals 0
    .param p1    # Lk1/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object p0, Lk1/b;->b:Lk1/b;

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method
