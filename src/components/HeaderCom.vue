<template>

<!-- add an if statement to wait while the stuff loads in. -->



  <div class="HeaderCom">
    <div class="container">
      <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
        <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        </a>
        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
          <li><a href="#" class="nav-link px-2 link-secondary">Home</a></li>
          <li><a href="https://github.com/JCruz6725" target="_blank" class="nav-link px-2 link-dark">GitHub</a></li>
          <li><a href="https://www.hackerrank.com/john_cruz6725" target="_blank" class="nav-link px-2 link-dark">HackerRank</a></li>
          <li><a href="#contact_me_info" target="" class="nav-link px-2 link-dark">Contact Me</a></li> <!-- need to make this move to contact me part of page -->
        </ul>
        <div class="col-md-3 text-end">
          <div class="dropdown">
            <button type="button" class="btn btn-outline-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
              Login
            </button>
            <form class="dropdown-menu p-4">
              <div class="mb-3">
                <label for="exampleDropdownFormEmail2" class="form-label">Email address</label>
                <input type="email" class="form-control" id="exampleDropdownFormEmail2" placeholder="email@example.com">
              </div>
              <div class="mb-3">
                <label for="exampleDropdownFormPassword2" class="form-label">Password</label>
                <input type="password" class="form-control" id="exampleDropdownFormPassword2" placeholder="Password">
              </div>
              <div class="mb-3">
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="dropdownCheck2">
                  <label class="form-check-label" for="dropdownCheck2">
                    Remember me
                  </label>
                </div>
              </div>
              <button type="submit" class="btn btn-primary">Sign in</button>
            </form>
          </div>
        </div>
      </header>
    </div>
  </div>
</template>

<script>
export default {
  name: 'HeaderCom',
}
</script>