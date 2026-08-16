.class public Lcom/android/tools/r8/FeatureSplit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/FeatureSplit$Builder;
    }
.end annotation


# static fields
.field public static final BASE:Lcom/android/tools/r8/FeatureSplit;


# instance fields
.field private a:Lcom/android/tools/r8/ProgramConsumer;

.field private b:Ljava/util/List;

.field private final c:Lcom/android/tools/r8/AndroidResourceProvider;

.field private d:Lcom/android/tools/r8/AndroidResourceConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/G;

    invoke-direct {v0}, Lcom/android/tools/r8/G;-><init>()V

    sput-object v0, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/ProgramConsumer;Ljava/util/ArrayList;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/AndroidResourceConsumer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/FeatureSplit;->a:Lcom/android/tools/r8/ProgramConsumer;

    .line 4
    iput-object p2, p0, Lcom/android/tools/r8/FeatureSplit;->b:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/android/tools/r8/FeatureSplit;->c:Lcom/android/tools/r8/AndroidResourceProvider;

    .line 6
    iput-object p4, p0, Lcom/android/tools/r8/FeatureSplit;->d:Lcom/android/tools/r8/AndroidResourceConsumer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/ProgramConsumer;Ljava/util/ArrayList;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/AndroidResourceConsumer;Lcom/android/tools/r8/U1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/FeatureSplit;-><init>(Lcom/android/tools/r8/ProgramConsumer;Ljava/util/ArrayList;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/AndroidResourceConsumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/FeatureSplit$Builder;
    .locals 2

    .line 10
    new-instance v0, Lcom/android/tools/r8/FeatureSplit$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/FeatureSplit$Builder;-><init>(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/T1;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Rv;
    .locals 3

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/Rv;

    iget-object v1, p0, Lcom/android/tools/r8/FeatureSplit;->a:Lcom/android/tools/r8/ProgramConsumer;

    iget-object v2, p0, Lcom/android/tools/r8/FeatureSplit;->d:Lcom/android/tools/r8/AndroidResourceConsumer;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Rv;-><init>(Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/AndroidResourceConsumer;)V

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/android/tools/r8/FeatureSplit;->a:Lcom/android/tools/r8/ProgramConsumer;

    .line 9
    iput-object v1, p0, Lcom/android/tools/r8/FeatureSplit;->d:Lcom/android/tools/r8/AndroidResourceConsumer;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/Z;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/FeatureSplit;->a:Lcom/android/tools/r8/ProgramConsumer;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Rv;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/Rv;->a:Lcom/android/tools/r8/ProgramConsumer;

    .line 2
    iput-object v0, p0, Lcom/android/tools/r8/FeatureSplit;->a:Lcom/android/tools/r8/ProgramConsumer;

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/Rv;->b:Lcom/android/tools/r8/AndroidResourceConsumer;

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/FeatureSplit;->d:Lcom/android/tools/r8/AndroidResourceConsumer;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/FeatureSplit;->b:Ljava/util/List;

    return-void
.end method

.method public getAndroidResourceConsumer()Lcom/android/tools/r8/AndroidResourceConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/FeatureSplit;->d:Lcom/android/tools/r8/AndroidResourceConsumer;

    return-object v0
.end method

.method public getAndroidResourceProvider()Lcom/android/tools/r8/AndroidResourceProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/FeatureSplit;->c:Lcom/android/tools/r8/AndroidResourceProvider;

    return-object v0
.end method

.method public getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/FeatureSplit;->a:Lcom/android/tools/r8/ProgramConsumer;

    return-object v0
.end method

.method public getProgramResourceProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/ProgramResourceProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/FeatureSplit;->b:Ljava/util/List;

    return-object v0
.end method

.method public isBase()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
