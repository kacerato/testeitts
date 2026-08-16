.class public Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/JavaElementDelta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field public final element:Lorg/eclipse/jdt/core/IJavaElement;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;->element:Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;->element:Lorg/eclipse/jdt/core/IJavaElement;

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;->element:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->equalsAndSameParent(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;->element:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
