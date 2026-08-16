.class public Lok/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lok/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lok/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lok/c$b;

    invoke-direct {v0}, Lok/c$b;-><init>()V

    sput-object v0, Lok/c$b;->a:Lok/c$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lok/c$b;
    .locals 1

    sget-object v0, Lok/c$b;->a:Lok/c$b;

    return-object v0
.end method
