.class public Lkl/l$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkl/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:Lkl/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkl/f;

    invoke-direct {v0}, Lkl/f;-><init>()V

    sput-object v0, Lkl/l$c;->a:Lkl/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
