.class public final Lw2/e$u;
.super Lw2/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "u"
.end annotation


# static fields
.field public static final c:Lw2/e$u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw2/e$u;

    invoke-direct {v0}, Lw2/e$u;-><init>()V

    sput-object v0, Lw2/e$u;->c:Lw2/e$u;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/e;-><init>()V

    return-void
.end method


# virtual methods
.method public B(C)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lw2/e;->e(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CharMatcher.javaUpperCase()"

    return-object v0
.end method
