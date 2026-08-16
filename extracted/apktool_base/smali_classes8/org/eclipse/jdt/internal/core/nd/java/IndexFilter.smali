.class public Lorg/eclipse/jdt/internal/core/nd/java/IndexFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL:Lorg/eclipse/jdt/internal/core/nd/java/IndexFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/IndexFilter;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/java/IndexFilter;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/IndexFilter;->ALL:Lorg/eclipse/jdt/internal/core/nd/java/IndexFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFilter()Lorg/eclipse/jdt/internal/core/nd/java/IndexFilter;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/IndexFilter;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/java/IndexFilter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public acceptBinding(Lorg/eclipse/jdt/core/dom/IBinding;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
