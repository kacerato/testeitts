.class final enum Lorg/openjdk/tools/javac/comp/Resolve$InterfaceLookupPhase$1;
.super Lorg/openjdk/tools/javac/comp/Resolve$InterfaceLookupPhase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve$InterfaceLookupPhase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Resolve$InterfaceLookupPhase;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/comp/Resolve$1;)V

    return-void
.end method


# virtual methods
.method public update(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve;)Lorg/openjdk/tools/javac/comp/Resolve$InterfaceLookupPhase;
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide p1

    const-wide/16 v0, 0x4600

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    sget-object p1, Lorg/openjdk/tools/javac/comp/Resolve$InterfaceLookupPhase;->DEFAULT_OK:Lorg/openjdk/tools/javac/comp/Resolve$InterfaceLookupPhase;

    return-object p1
.end method
