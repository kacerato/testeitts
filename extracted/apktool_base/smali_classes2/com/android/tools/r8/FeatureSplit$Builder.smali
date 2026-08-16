.class public Lcom/android/tools/r8/FeatureSplit$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/FeatureSplit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/android/tools/r8/ProgramConsumer;

.field private final b:Ljava/util/ArrayList;

.field private c:Lcom/android/tools/r8/AndroidResourceProvider;

.field private d:Lcom/android/tools/r8/AndroidResourceConsumer;


# direct methods
.method private constructor <init>(Lcom/android/tools/r8/internal/Ef0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/FeatureSplit$Builder;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/T1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/FeatureSplit$Builder;-><init>(Lcom/android/tools/r8/internal/Ef0;)V

    return-void
.end method


# virtual methods
.method public addProgramResourceProvider(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/FeatureSplit$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/FeatureSplit$Builder;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/android/tools/r8/FeatureSplit;
    .locals 7

    new-instance v6, Lcom/android/tools/r8/FeatureSplit;

    iget-object v1, p0, Lcom/android/tools/r8/FeatureSplit$Builder;->a:Lcom/android/tools/r8/ProgramConsumer;

    iget-object v2, p0, Lcom/android/tools/r8/FeatureSplit$Builder;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/FeatureSplit$Builder;->c:Lcom/android/tools/r8/AndroidResourceProvider;

    iget-object v4, p0, Lcom/android/tools/r8/FeatureSplit$Builder;->d:Lcom/android/tools/r8/AndroidResourceConsumer;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/FeatureSplit;-><init>(Lcom/android/tools/r8/ProgramConsumer;Ljava/util/ArrayList;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/AndroidResourceConsumer;Lcom/android/tools/r8/U1;)V

    return-object v6
.end method

.method public setAndroidResourceConsumer(Lcom/android/tools/r8/AndroidResourceConsumer;)Lcom/android/tools/r8/FeatureSplit$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/FeatureSplit$Builder;->d:Lcom/android/tools/r8/AndroidResourceConsumer;

    return-object p0
.end method

.method public setAndroidResourceProvider(Lcom/android/tools/r8/AndroidResourceProvider;)Lcom/android/tools/r8/FeatureSplit$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/FeatureSplit$Builder;->c:Lcom/android/tools/r8/AndroidResourceProvider;

    return-object p0
.end method

.method public setProgramConsumer(Lcom/android/tools/r8/ProgramConsumer;)Lcom/android/tools/r8/FeatureSplit$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/FeatureSplit$Builder;->a:Lcom/android/tools/r8/ProgramConsumer;

    return-object p0
.end method
