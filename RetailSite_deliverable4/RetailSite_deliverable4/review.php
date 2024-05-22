

<div class="row">
    <div>
        <!-- Product details section -->
    </div>
    <div>
        <!-- Review form -->
  
        <form id="reviewForm">
            <div class="form-group">
                <label for="rating">Rating:</label>
                <select name="rating" id="rating" class="form-control">
                    <option value="1">1 Star</option>
                    <option value="2">2 Stars</option>
                    <option value="3">3 Stars</option>
                    <option value="4">4 Stars</option>
                    <option value="5">5 Stars</option>
                </select>
            </div>
            <div class="form-group">
                <label for="comment">Comment:</label>
                <textarea name="comment" id="comment" rows="5" class="form-control"></textarea>
            </div>
           
            <button type="submit" class="btn btn-primary">Submit Review</button>
        </form>
    </div>
</div>


<script>
    $(function() {
        $('#reviewForm').on('submit', function(e) {
            e.preventDefault();
            var formData = $(this).serialize();
            $.ajax({
                url: 'submit_review.php',
                method: 'POST',
                data: formData,
                dataType: 'json',
                success: function(response) {
                    if (response.success) {
                        $('#callout').removeClass('callout-danger').addClass('callout-success').show().find('.message').html(response.message);
                    } else {
                        $('#callout').removeClass('callout-success').addClass('callout-danger').show().find('.message').html(response.message);
                    }
                },
                error: function() {
                    $('#callout').removeClass('callout-success').addClass('callout-danger').show().find('.message').html('An error occurred while submitting your review.');
                }
            });
        });
    });
</script>


<!-- CSS for Review Form -->
<style>
    .main-footer{
  position: relative;
  bottom: 0;
  width: 100%;
  height: 2.5rem;            /* Footer height */
}

  form {
    display: flex;
    flex-direction: column;
    max-width: 600px;
    margin: 0 auto;
  }

  label, input, textarea {
    margin-bottom: 10px;
    font-size: 1.2rem;
  }

  label {
    font-weight: bold;
  }

  input[type="submit"] {
    padding: 10px 20px;
    background-color: #4285f4;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }

  input[type="submit"]:hover {
    background-color: #3367d6;
  }
</style>
