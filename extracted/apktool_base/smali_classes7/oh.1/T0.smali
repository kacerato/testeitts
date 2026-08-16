.class public Loh/T0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Loh/V0;

.field public static final b:Loh/X0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loh/V0;

    invoke-direct {v0}, Loh/V0;-><init>()V

    sput-object v0, Loh/T0;->a:Loh/V0;

    new-instance v0, Loh/X0;

    invoke-direct {v0}, Loh/X0;-><init>()V

    sput-object v0, Loh/T0;->b:Loh/X0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Loh/h;)Loh/V0;
    .locals 2

    invoke-virtual {p0}, Loh/h;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Loh/T0;->a:Loh/V0;

    return-object p0

    :cond_0
    new-instance v0, Loh/V0;

    invoke-direct {v0, p0}, Loh/V0;-><init>(Loh/h;)V

    return-object v0
.end method

.method public static b(Loh/h;)Loh/X0;
    .locals 2

    invoke-virtual {p0}, Loh/h;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Loh/T0;->b:Loh/X0;

    return-object p0

    :cond_0
    new-instance v0, Loh/X0;

    invoke-direct {v0, p0}, Loh/X0;-><init>(Loh/h;)V

    return-object v0
.end method
