.class public final Lcom/android/tools/r8/internal/jk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceUnknownMappingInformationElement;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/ik0;

.field public final b:Lcom/android/tools/r8/internal/sv0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/ik0;Lcom/android/tools/r8/internal/sv0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jk0;->a:Lcom/android/tools/r8/internal/ik0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/jk0;->b:Lcom/android/tools/r8/internal/sv0;

    return-void
.end method


# virtual methods
.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/jk0;->b:Lcom/android/tools/r8/internal/sv0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/sv0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayLoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/jk0;->b:Lcom/android/tools/r8/internal/sv0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/sv0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getRetraceResultContext()Lcom/android/tools/r8/retrace/RetraceUnknownJsonMappingInformationResult;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/jk0;->a:Lcom/android/tools/r8/internal/ik0;

    return-object v0
.end method
