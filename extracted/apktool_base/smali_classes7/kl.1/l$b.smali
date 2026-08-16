.class public Lkl/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkl/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lkl/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkl/e;

    invoke-direct {v0}, Lkl/e;-><init>()V

    sput-object v0, Lkl/l$b;->a:Lkl/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
