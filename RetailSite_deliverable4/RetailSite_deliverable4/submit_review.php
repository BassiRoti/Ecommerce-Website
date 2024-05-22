<?php
include 'includes/session.php';

$conn = $pdo->open();


$rating = $_POST['rating'];
$comment = $_POST['comment'];

try {
    $stmt = $conn->prepare("INSERT INTO reviews ( rating, comment, created_at) VALUES ( :rating, :comment, NOW())");
    $stmt->execute(['rating' => $rating, 'comment' => $comment]);

    $response = ['success' => true, 'message' => 'Your review has been submitted successfully.'];
} catch (PDOException $e) {
    $response = ['success' => false, 'message' => 'An error occurred while submitting your review.'];
}

echo json_encode($response);

$pdo->close();
?>
