.class public abstract Lw2/U;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lv2/b;
.end annotation

.annotation runtime Lw2/k;
.end annotation


# static fields
.field public static final a:Lw2/U;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw2/U$a;

    invoke-direct {v0}, Lw2/U$a;-><init>()V

    sput-object v0, Lw2/U;->a:Lw2/U;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lw2/U;
    .locals 1

    sget-object v0, Lw2/U;->a:Lw2/U;

    return-object v0
.end method


# virtual methods
.method public abstract a()J
.end method
