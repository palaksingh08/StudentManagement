// small UI helpers + subtle animations
document.addEventListener('DOMContentLoaded', () => {
  // slight parallax on hero left Lottie
  const hero = document.querySelector('.hero-left');
  if(hero){
    window.addEventListener('mousemove', e => {
      const w = window.innerWidth;
      const h = window.innerHeight;
      const x = (e.clientX - w/2)/w;
      const y = (e.clientY - h/2)/h;
      hero.style.transform = `translate3d(${x*8}px, ${y*6}px, 0)`;
    });
  }

  // animate stat counters if present
  document.querySelectorAll('.stat').forEach(el => {
    const val = parseInt(el.textContent || '0');
    let cur = 0;
    if(val>0){
      const step = Math.max(1, Math.floor(val/50));
      const t = setInterval(() => {
        cur += step;
        if(cur >= val){ el.textContent = val; clearInterval(t); }
        else el.textContent = cur;
      }, 10);
    }
  });
});
